.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReturnValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALBOOLEAN_FIELD_NUMBER:I = 0x2

.field public static final VALDOUBLE_FIELD_NUMBER:I = 0x6

.field public static final VALFLOAT_FIELD_NUMBER:I = 0x5

.field public static final VALINT_FIELD_NUMBER:I = 0x3

.field public static final VALLONG_FIELD_NUMBER:I = 0x4

.field public static final VALSTRING_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private valBoolean_:Z

.field private valDouble_:D

.field private valFloat_:F

.field private valInt_:I

.field private valLong_:J

.field private valString_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;-><init>(Z)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_11
    :goto_11
    if-nez v1, :cond_c3

    :try_start_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    if-eqz v3, :cond_9f

    const/16 v4, 0x8

    if-eq v3, v4, :cond_87

    const/16 v5, 0x10

    if-eq v3, v5, :cond_7a

    const/16 v6, 0x18

    if-eq v3, v6, :cond_6d

    const/16 v6, 0x20

    if-eq v3, v6, :cond_61

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_55

    const/16 v4, 0x31

    if-eq v3, v4, :cond_49

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3c

    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_9f

    :cond_3c
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    goto :goto_11

    :cond_49
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v6

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    goto :goto_11

    :cond_55
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v5

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    goto :goto_11

    :cond_61
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    goto :goto_11

    :cond_6d
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    goto :goto_11

    :cond_7a
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    goto :goto_11

    :cond_87
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-static {v3}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    move-result-object v4

    if-nez v4, :cond_96

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_11

    :cond_96
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    iput-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    :try_end_9d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_9d} :catch_b3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_9d} :catch_a4
    .catchall {:try_start_13 .. :try_end_9d} :catchall_a2

    goto/16 :goto_11

    :cond_9f
    :goto_9f
    const/4 v1, 0x1

    goto/16 :goto_11

    :catchall_a2
    move-exception p1

    goto :goto_b9

    :catch_a4
    move-exception p1

    :try_start_a5
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_b3
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_b9
    .catchall {:try_start_a5 .. :try_end_b9} :catchall_a2

    :goto_b9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->makeExtensionsImmutable()V

    throw p1

    :cond_c3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1500()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    return p1
.end method

.method static synthetic access$2002(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;J)J
    .registers 3

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;F)F
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    return p1
.end method

.method static synthetic access$2202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;D)D
    .registers 3

    iput-wide p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 3

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->VOID:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 1

    # invokes: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->access$1300()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p0
.end method


# virtual methods
.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v0

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 6

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_18
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_25

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_25
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_33

    const/4 v0, 0x3

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    invoke-static {v0, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v2, v0

    :cond_33
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_41

    iget-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    invoke-static {v1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v2, v0

    :cond_41
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_50

    const/4 v0, 0x5

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/2addr v2, v0

    :cond_50
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5f

    const/4 v0, 0x6

    iget-wide v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    invoke-static {v0, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v0

    add-int/2addr v2, v0

    :cond_5f
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_70

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_70
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedSerializedSize:I

    return v2
.end method

.method public final getType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getValBoolean()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    return v0
.end method

.method public final getValDouble()D
    .registers 3

    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    return-wide v0
.end method

.method public final getValFloat()F
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    return v0
.end method

.method public final getValInt()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    return v0
.end method

.method public final getValLong()J
    .registers 3

    iget-wide v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    return-wide v0
.end method

.method public final getValString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getValStringBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valString_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final hasType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValBoolean()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValDouble()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValFloat()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValInt()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValLong()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValString()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x40

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

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    iget-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    iput-byte v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 4

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;
    .registers 2

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getSerializedSize()I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->type_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$FundType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_12
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valBoolean_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_1d
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_29

    const/4 v0, 0x3

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valInt_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_29
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_35

    iget-wide v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valLong_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_35
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_42

    const/4 v0, 0x5

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valFloat_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_42
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4f

    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->valDouble_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    :cond_4f
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5e

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getValStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5e
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
