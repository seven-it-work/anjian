.class public final Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EnumValueDescriptorProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    }
.end annotation


# static fields
.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final NUMBER_FIELD_NUMBER:I = 0x2

.field public static final OPTIONS_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private options_:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSerializedSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;-><init>(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$10(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;)V
    .registers 2

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-void
.end method

.method static synthetic access$11(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)V
    .registers 2

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    return-void
.end method

.method static synthetic access$8(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$9(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;I)V
    .registers 2

    iput p1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    # getter for: Lcom/google/protobuf/DescriptorProtos;->internal_static_google_protobuf_EnumValueDescriptorProto_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .registers 1

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->create()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$18()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .registers 2

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result p0

    if-eqz p0, :cond_f

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result p0

    if-eqz p0, :cond_f

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p0

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    # invokes: Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->buildParsed()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;->access$17(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;
    .registers 2

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->defaultInstance:Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getDefaultInstanceForType()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->name_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getNumber()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    return v0
.end method

.method public final getOptions()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public final getOptionsOrBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 4

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_16

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_16
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_23

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_23
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_31
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedSerializedSize:I

    return v2
.end method

.method public final hasName()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNumber()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasOptions()Z
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 2

    # getter for: Lcom/google/protobuf/DescriptorProtos;->internal_static_google_protobuf_EnumValueDescriptorProto_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$67()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v2, :cond_a

    return v2

    :cond_a
    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->hasOptions()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getOptions()Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1e

    iput-byte v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    return v1

    :cond_1e
    iput-byte v2, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->memoizedIsInitialized:B

    return v2
.end method

.method public final newBuilderForType()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .registers 2

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .registers 4

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilderForType()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;
    .registers 2

    invoke-static {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->newBuilder(Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;)Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->toBuilder()Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto$Builder;

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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getSerializedSize()I

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_10

    invoke-direct {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_10
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->number_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1b
    iget v0, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_27

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->options_:Lcom/google/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_27
    invoke-virtual {p0}, Lcom/google/protobuf/DescriptorProtos$EnumValueDescriptorProto;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
