.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommandOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UipToCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;
    }
.end annotation


# static fields
.field public static final COMMAND_FIELD_NUMBER:I = 0x1

.field public static final EVENT_FIELD_NUMBER:I = 0x2

.field public static final ISSUCCESS_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;",
            ">;"
        }
    .end annotation
.end field

.field public static final UIP_ATTRIBUTE_DATA_FIELD_NUMBER:I = 0x4

.field private static final defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

.field private event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

.field private isSuccess_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private uipAttributeData_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;-><init>(Z)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->initFields()V

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

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-nez v1, :cond_ac

    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_89

    const/16 v4, 0x8

    if-eq v3, v4, :cond_73

    const/16 v5, 0x12

    if-eq v3, v5, :cond_49

    const/16 v5, 0x18

    if-eq v3, v5, :cond_3c

    const/16 v5, 0x22

    if-eq v3, v5, :cond_30

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_89

    :cond_30
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

    goto :goto_11

    :cond_3c
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->isSuccess_:Z

    goto :goto_11

    :cond_49
    const/4 v3, 0x0

    iget v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_56

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    move-result-object v3

    :cond_56
    sget-object v4, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    if-eqz v3, :cond_6d

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    invoke-virtual {v3, v4}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;

    invoke-virtual {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    :cond_6d
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    goto :goto_11

    :cond_73
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    move-result-object v4

    if-nez v4, :cond_81

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto :goto_11

    :cond_81
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;
    :try_end_88
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_88} :catch_9c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_88} :catch_8d
    .catchall {:try_start_13 .. :try_end_88} :catchall_8b

    goto :goto_11

    :cond_89
    :goto_89
    const/4 v1, 0x1

    goto :goto_11

    :catchall_8b
    move-exception p1

    goto :goto_a2

    :catch_8d
    move-exception p1

    :try_start_8e
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_9c
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_a2
    .catchall {:try_start_8e .. :try_end_a2} :catchall_8b

    :goto_a2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->makeExtensionsImmutable()V

    throw p1

    :cond_ac
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedIsInitialized:B

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10100()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object p1
.end method

.method static synthetic access$10502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->isSuccess_:Z

    return p1
.end method

.method static synthetic access$10600(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->EVENT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->isSuccess_:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;
    .registers 1

    # invokes: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->access$9900()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object p0
.end method


# virtual methods
.method public final getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    move-result-object v0

    return-object v0
.end method

.method public final getEvent()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object v0
.end method

.method public final getEventOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEventOrBuilder;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    return-object v0
.end method

.method public final getIsSuccess()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->isSuccess_:Z

    return v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 5

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_18
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_25
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_33

    const/4 v0, 0x3

    iget-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->isSuccess_:Z

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_33
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_43

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getUipAttributeDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_43
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedSerializedSize:I

    return v2
.end method

.method public final getUipAttributeData()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getUipAttributeDataBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->uipAttributeData_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasCommand()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEvent()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIsSuccess()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUipAttributeData()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/16 v1, 0x8

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

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->o()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->hasCommand()Z

    move-result v0

    if-nez v0, :cond_14

    iput-byte v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedIsInitialized:B

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->hasEvent()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getEvent()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_27

    iput-byte v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedIsInitialized:B

    return v2

    :cond_27
    iput-byte v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;
    .registers 4

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;
    .registers 2

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Builder;

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

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getSerializedSize()I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand$Command_Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_12
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->event_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1d
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_29

    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->isSuccess_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_29
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_37

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getUipAttributeDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_37
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$UipToCommand;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
