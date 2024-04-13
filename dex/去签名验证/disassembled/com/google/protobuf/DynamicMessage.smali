.class public final Lcom/google/protobuf/DynamicMessage;
.super Lcom/google/protobuf/AbstractMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DynamicMessage$Builder;
    }
.end annotation


# instance fields
.field private final fields:Lcom/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedSize:I

.field private final type:Lcom/google/protobuf/Descriptors$Descriptor;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;",
            "Lcom/google/protobuf/UnknownFieldSet;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/AbstractMessage;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/DynamicMessage;->memoizedSize:I

    iput-object p1, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iput-object p2, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    iput-object p3, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;Lcom/google/protobuf/DynamicMessage;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/DynamicMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;)V

    return-void
.end method

.method static synthetic access$10(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/google/protobuf/DynamicMessage;->isInitialized(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object p0
.end method

.method static synthetic access$7(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/FieldSet;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    return-object p0
.end method

.method static synthetic access$8(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/UnknownFieldSet;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method public static getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;
    .registers 4

    new-instance v0, Lcom/google/protobuf/DynamicMessage;

    invoke-static {}, Lcom/google/protobuf/FieldSet;->emptySet()Lcom/google/protobuf/FieldSet;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/protobuf/DynamicMessage;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;Lcom/google/protobuf/UnknownFieldSet;)V

    return-object v0
.end method

.method private static isInitialized(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Descriptors$Descriptor;",
            "Lcom/google/protobuf/FieldSet<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/google/protobuf/FieldSet;->isInitialized()Z

    move-result p0

    return p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v0}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0
.end method

.method public static newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;
    .registers 3

    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DynamicMessage$Builder;)V

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;
    .registers 4

    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    invoke-interface {p0}, Lcom/google/protobuf/Message;->getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DynamicMessage$Builder;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/DynamicMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/DynamicMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;)Lcom/google/protobuf/DynamicMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;[B)Lcom/google/protobuf/DynamicMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/Descriptors$Descriptor;[BLcom/google/protobuf/ExtensionRegistry;)Lcom/google/protobuf/DynamicMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DynamicMessage$Builder;

    # invokes: Lcom/google/protobuf/DynamicMessage$Builder;->buildParsed()Lcom/google/protobuf/DynamicMessage;
    invoke-static {p0}, Lcom/google/protobuf/DynamicMessage$Builder;->access$22(Lcom/google/protobuf/DynamicMessage$Builder;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p0

    return-object p0
.end method

.method private verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getContainingType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    if-eq p1, v0, :cond_10

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    return-void
.end method


# virtual methods
.method public final getAllFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/google/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getAllFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstanceForType()Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public final getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_16
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_27

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getMessageType()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/DynamicMessage;->getDefaultInstance(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    :cond_2b
    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/protobuf/DynamicMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/DynamicMessage$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/DynamicMessage$1;-><init>(Lcom/google/protobuf/DynamicMessage;)V

    return-object v0
.end method

.method public final getRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;I)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/FieldSet;->getRepeatedField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRepeatedFieldCount(Lcom/google/protobuf/Descriptors$FieldDescriptor;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->getRepeatedFieldCount(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)I

    move-result p1

    return p1
.end method

.method public final getSerializedSize()I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/DynamicMessage;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getMessageSetSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v1

    :goto_1e
    add-int/2addr v0, v1

    goto :goto_2d

    :cond_20
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/google/protobuf/FieldSet;->getSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    goto :goto_1e

    :goto_2d
    iput v0, p0, Lcom/google/protobuf/DynamicMessage;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/protobuf/DynamicMessage;->verifyContainingType(Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->hasField(Lcom/google/protobuf/FieldSet$FieldDescriptorLite;)Z

    move-result p1

    return p1
.end method

.method public final isInitialized()Z
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-static {v0, v1}, Lcom/google/protobuf/DynamicMessage;->isInitialized(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/FieldSet;)Z

    move-result v0

    return v0
.end method

.method public final newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;
    .registers 4

    new-instance v0, Lcom/google/protobuf/DynamicMessage$Builder;

    iget-object v1, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/DynamicMessage$Builder;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;Lcom/google/protobuf/DynamicMessage$Builder;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/google/protobuf/DynamicMessage$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->newBuilderForType()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->toBuilder()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/google/protobuf/DynamicMessage;->toBuilder()Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getOptions()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void

    :cond_17
    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->fields:Lcom/google/protobuf/FieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/FieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
